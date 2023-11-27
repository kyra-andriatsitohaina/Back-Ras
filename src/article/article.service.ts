import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { ArticleEntity } from 'src/entities/article.entity/article.entity';
import { Repository } from 'typeorm';
import { UserEntity } from 'src/entities/user.entity/user.entity';
import { unlinkSync } from 'fs';
import { FavoriteEntity } from 'src/entities/favorite.entity/favorite.entity';

@Injectable()
export class ArticleService {
    constructor(
        @InjectRepository(ArticleEntity) private articleRepository : Repository<ArticleEntity>,
        @InjectRepository(FavoriteEntity) private FavoriteRepository : Repository<FavoriteEntity>
    ){}

    async getArticle() : Promise<ArticleEntity[]>{
        return await this.articleRepository.find()
    }
    async findArticle(id : number) : Promise<ArticleEntity | null>{
        return await this.articleRepository.findOneBy({id})
       
    }
    // : Promise<ArticleEntity>
    async createArticle(userId:number,article:Partial<ArticleEntity>)  {
        article.date = new Date().toLocaleDateString()
        article.userId = userId
        article.favorite = 0
        return await this.articleRepository.save(article)
    }
    
    async deleteArticle(id : number){
        const image  = this.articleRepository.findOneBy({id})
        if((await image).image !== "default.jpg"){
            unlinkSync(`public/images/${(await image).image}`);
        }
        await this.articleRepository.delete(id)
    }

    async deleteAllArticle(){
        await this.articleRepository.clear()
    }

    async updateArticle(id : number,article : Partial<ArticleEntity>){
        return await this.articleRepository.update(id,article)
    }

    /* favorite */
    async addFavorite(id:number,article : Partial<ArticleEntity>){ 
        const favorite ={
            article_title : article.title,
            article_id : article.id,
            user : id
        }
        const checkFavorite = await this.FavoriteRepository.createQueryBuilder("favorites")
        .where("favorites.user = :id",{id})
        .andWhere("favorites.article_id = :articleId",{articleId:favorite.article_id})
        .getOne();
        console.log(checkFavorite)
        
        if(checkFavorite){
            const article = await this.articleRepository.findOneBy({id:favorite.article_id})
            if(article.favorite !== 0){
                article.favorite = article.favorite - 1
                await this.articleRepository.update(article.id,article)
            }

            await this.FavoriteRepository.delete(checkFavorite.id)
            return {status:false,message:"delete favoris"}
        }else{
            await this.FavoriteRepository.save(favorite)
            const article = await this.articleRepository.findOneBy({id:favorite.article_id})
            article.favorite = article.favorite + 1
            await this.articleRepository.update(article.id,article)

            return {status:true,message:"add favoris"}
        }
    }
}
