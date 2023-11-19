import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post } from '@nestjs/common';
import { ArticleService } from './article.service';
import { ArticleEntity } from 'src/entities/article.entity/article.entity';

@Controller('articles')
export class ArticleController {
    constructor(
        private articleService : ArticleService 
    ){}

    @Get() 
    async get_article(){
        return await this.articleService.getArticle()
    }

    @Get(":id")
    async find_article(
        @Param("id",ParseIntPipe) id : number
    ) : Promise<ArticleEntity>{
        return await this.articleService.findArticle(id)
    }

    @Post()
    async new_article(
        @Body() article : Partial<ArticleEntity>
    ) : Promise<string>{
        await this.articleService.createArticle(article)
        return "article ajouté"
    }

    @Delete(":id")
    async delete_article(
        @Param("id") id : number
    ) : Promise<string>{
        await this.articleService.deleteArticle(id)
        return `article ${id} supprimé`
    }

    @Patch(":id")
    async articleUpdate(
        @Param("id",ParseIntPipe) id : number,
        @Body() article : Partial<ArticleEntity>
    ) : Promise<string>{
        await this.articleService.updateArticle(id,article)
        return `article ${id} modifié`
    }
}
