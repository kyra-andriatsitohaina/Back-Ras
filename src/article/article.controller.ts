import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, UploadedFile, UseInterceptors } from '@nestjs/common';
import { ArticleService } from './article.service';
import { ArticleEntity } from 'src/entities/article.entity/article.entity';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import { editFileName, imageFileFilter } from 'src/interceptors/imageInterceptor';

@Controller('articles')
export class ArticleController {
    constructor(
        private articleService : ArticleService ,
    ){}
    @Get("tarifs")
    async get_tarif(){
        return await this.articleService.getTarif()
    }

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

    @Post(":userId")
    @UseInterceptors(FileInterceptor('image',
    {
        storage: diskStorage({
            destination:"public/images",
            filename:editFileName,
        }),
        fileFilter:imageFileFilter,
    }))
    async new_article(
        @Param("userId",ParseIntPipe) userId : number,
        @Body() article : Partial<ArticleEntity>,
        @UploadedFile() image : Express.Multer.File
    ) : Promise<string>{
        
        if(image !=null){
            const sary = {filename: image.filename}
            article.image = sary.filename
        }else{
            article.image = "default.jpg"
        }
        await this.articleService.createArticle(userId,article)
        return "article ajouté"
    }

    @Patch(":userId")
    @UseInterceptors(FileInterceptor('image',
    {
        storage: diskStorage({
            destination:"public/images",
            filename:editFileName,
        }),
        fileFilter:imageFileFilter,
    }))
    async update_article(
        @Param("userId",ParseIntPipe) userId : number,
        @Body() article : Partial<ArticleEntity>,
        @UploadedFile() image : Express.Multer.File
    ) : Promise<string>{
        if(image !=null){
            const sary = {filename: image.filename}
            article.image = sary.filename
        }
        await this.articleService.updateArticle(userId,article)
        return "article modifié"
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
    ) {
        await this.articleService.updateArticle(id,article)
    }
    
    @Patch("/validation/:id")
    async validation(
        @Param("id",ParseIntPipe) id : number,
        @Body() article : Partial<ArticleEntity>
    ) {
        await this.articleService.validateArticle(id,article)
    }
    @Patch("/delValidation/:id")
    async delValidation(
        @Param("id",ParseIntPipe) id : number,
        @Body() article : Partial<ArticleEntity>
    ) {
        await this.articleService.deleteValidation(id,article)
    }

    /* favorites */
    @Post("/favorite/:userId")
    async add_favorite(
        @Param("userId",ParseIntPipe) userId : number,
        @Body() article : Partial<ArticleEntity>,
    ) {    
        return await this.articleService.addFavorite(userId,article)
    }
    
}



