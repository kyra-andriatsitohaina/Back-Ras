import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';
import { ProvincesEntity } from 'src/entities/provinces.entity/provinces.entity';

@Injectable()
export class AdminService {
    constructor(
        @InjectRepository(ProvincesEntity) private adminRepository : Repository<ProvincesEntity>
    ){}

    async getCategory() : Promise<ProvincesEntity[]>{
        return await this.adminRepository.find()
    }
    async createCategory(Category:Partial<ProvincesEntity>) : Promise<ProvincesEntity>{
        return await this.adminRepository.save(Category)
    }

    async deleteCategory(id : number){
        await this.adminRepository.delete(id)
    }

    async deleteAllCategory(){
        await this.adminRepository.clear()
    }

    async updateCategory(id : number,Category : Partial<ProvincesEntity>){
        return await this.adminRepository.update(id,Category)
    }
}
