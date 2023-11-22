import { Controller, Get,Post, Param, ParseIntPipe, Body, Delete, Patch, UseInterceptors, UploadedFile } from '@nestjs/common';
import { UsersService } from './users.service';
import { UserEntity } from 'src/entities/user.entity/user.entity';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import { editFileName, imageFileFilter } from 'src/interceptors/imageInterceptor';

@Controller('users')
export class UsersController {
    constructor(
        private usersService : UsersService
    ){}
    @Get() 
    async get_users(){
        return await this.usersService.getUsers()
    }

    @Get(":id")
    async find_user(
        @Param("id",ParseIntPipe) id : number
    ) : Promise<UserEntity>{
        console.log(typeof(id));
        
        return await this.usersService.findUser(id)
    }


    @Post("new")
    @UseInterceptors(FileInterceptor('photo',
    {
        storage: diskStorage({
            destination:"public/images",
            filename:editFileName,
        }),
        fileFilter:imageFileFilter,
    }))
    async new_user(
        @Body() user : UserEntity,
        @UploadedFile() image : Express.Multer.File
    ){
        const newUser={
            pseudo:user.pseudo,
            email:user.email,
            password:user.password,
            photo:"avatar.png"
        }
        if(image !=null){
            const sary = {filename: image.filename}
            newUser.photo = sary.filename
        }
        const checkEmail = await this.usersService.checkEmail(newUser.email)
        if(checkEmail.status){
            await this.usersService.newUser(newUser)
            return await this.usersService.login_user(newUser)
        }else{
            return checkEmail
        }
    }

    @Post("auth")
    async auth_user(
        @Body() user : Partial<UserEntity>
    ) {
         return await this.usersService.login_user(user)
    }

    @Delete(":id")
    async delete_user(
        @Param("id") id : number
    ) : Promise<string>{
        await this.usersService.deleteUser(id)
        return `user ${id} supprimé`
    }

    @Patch(":id")
    async userUpdate(
        @Param("id",ParseIntPipe) id : number,
        @Body() user : Partial<UserEntity>
    ) : Promise<string>{
        await this.usersService.userUpdate(id,user)
        return `user ${id} modifié`
    }
}

