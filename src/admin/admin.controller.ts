import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post } from '@nestjs/common';
import { AdminService } from './admin.service';
import { ProvincesEntity } from 'src/entities/provinces.entity/provinces.entity';
import { AdminEntity } from 'src/entities/admin.entity/admin.entity';

@Controller('admin')
export class AdminController {
    constructor(
        private adminService : AdminService
    ){}

    @Get("category") 
    async get_category(){
        return await this.adminService.getCategory()
    }
    @Post("category")
    async new_category(
        @Body() category : Partial<ProvincesEntity>
    ) : Promise<string>{
         await this.adminService.createCategory(category)
         return "category ajouté"
    }

    @Delete("category/:id")
    async delete_category(
        @Param("id") id : number
    ) : Promise<string>{
        await this.adminService.deleteCategory(id)
        return `category ${id} supprimé`
    }

    @Patch("category/:id")
    async category_Update(
        @Param("id",ParseIntPipe) id : number,
        @Body() category : Partial<ProvincesEntity>
    ) : Promise<string>{
        await this.adminService.updateCategory(id,category)
        return `category ${id} modifié`
    }

    /* Admin Login */
    @Post("login")
    async login(
        @Body() admin : Partial<AdminEntity>
    ) {
        return await this.adminService.login(admin)
    }
    @Patch("login")
    async update_admin(
        @Body() admin : Partial<AdminEntity>
    ) : Promise<string>{
        await this.adminService.updateAdmin(admin)
        return `password modifié`
    }

}
