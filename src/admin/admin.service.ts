import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { CategoriesEntity } from 'src/entities/categories.entity/categories.entity';
import { Repository } from 'typeorm';

@Injectable()
export class AdminService {
    constructor(
        @InjectRepository(CategoriesEntity) private adminRepository : Repository<CategoriesEntity>
    ){}

    async getCategory() : Promise<CategoriesEntity[]>{
        return await this.adminRepository.find()
    }
    async createCategory(Category:Partial<CategoriesEntity>) : Promise<CategoriesEntity>{
        return await this.adminRepository.save(Category)
    }

    async deleteCategory(id : number){
        await this.adminRepository.delete(id)
    }

    async deleteAllCategory(){
        await this.adminRepository.clear()
    }

    async updateCategory(id : number,Category : Partial<CategoriesEntity>){
        return await this.adminRepository.update(id,Category)
    }
}
