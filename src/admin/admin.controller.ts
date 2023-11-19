import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post } from '@nestjs/common';
import { AdminService } from './admin.service';
import { CategoriesEntity } from 'src/entities/categories.entity/categories.entity';

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
        @Body() category : Partial<CategoriesEntity>
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
        @Body() category : Partial<CategoriesEntity>
    ) : Promise<string>{
        await this.adminService.updateCategory(id,category)
        return `category ${id} modifié`
    }
}
