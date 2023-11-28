import { Module } from '@nestjs/common';
import { ArticleController } from './article.controller';
import { ArticleService } from './article.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ArticleEntity } from 'src/entities/article.entity/article.entity';
import { FavoriteEntity } from 'src/entities/favorite.entity/favorite.entity';
import { TarifEntity } from 'src/entities/tarif.entity/tarif.entity';

@Module({
  imports:[TypeOrmModule.forFeature([ArticleEntity,FavoriteEntity,TarifEntity])],
  controllers: [ArticleController],
  providers: [ArticleService]
})
export class ArticleModule {}
