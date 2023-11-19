import { Module } from '@nestjs/common';
import { AdminService } from './admin.service';
import { AdminController } from './admin.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CategoriesEntity } from 'src/entities/categories.entity/categories.entity';

@Module({
  imports:[TypeOrmModule.forFeature([CategoriesEntity])],
  providers: [AdminService],
  controllers: [AdminController]
})
export class AdminModule {}
