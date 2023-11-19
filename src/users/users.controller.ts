import { Controller, Get,Post, Param, ParseIntPipe, Body, Delete, Patch } from '@nestjs/common';
import { UsersService } from './users.service';
import { UsersEntity } from './entity/users.entity';

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
    ) : Promise<UsersEntity>{
        console.log(typeof(id));
        
        return await this.usersService.findUser(id)
    }

    @Post()
    async new_user(
        @Body() user : Partial<UsersEntity>
    ) : Promise<string>{
         await this.usersService.newUser(user)
         return "user ajouté"
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
        @Body() user : Partial<UsersEntity>
    ) : Promise<string>{
        await this.usersService.userUpdate(id,user)
        return `user ${id} modifié`
    }
}

