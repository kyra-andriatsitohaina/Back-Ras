import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { ArticleEntity } from 'src/entities/article.entity/article.entity';
import { Repository } from 'typeorm';
import { UserEntity } from 'src/entities/user.entity/user.entity';

@Injectable()
export class ArticleService {
    constructor(
        @InjectRepository(ArticleEntity) private articleRepository : Repository<ArticleEntity>,
    ){}

    async getArticle() : Promise<ArticleEntity[]>{
        return await this.articleRepository.find()
    }
    async findArticle(id : number) : Promise<ArticleEntity | null>{
        return await this.articleRepository.findOneBy({id})
       
    }
    async createArticle(userId:number,article:Partial<ArticleEntity>) : Promise<ArticleEntity> {
        article.date = new Date().toLocaleDateString()
        article.userId = userId
        article.favorite = 0
        return await this.articleRepository.save(article)
    }

    async deleteArticle(id : number){
        await this.articleRepository.delete(id)
    }

    async deleteAllArticle(){
        await this.articleRepository.clear()
    }

    async updateArticle(id : number,article : Partial<ArticleEntity>){
        return await this.articleRepository.update(id,article)
    }
}
