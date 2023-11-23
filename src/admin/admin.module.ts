import { Module } from '@nestjs/common';
import { AdminService } from './admin.service';
import { AdminController } from './admin.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProvincesEntity } from 'src/entities/provinces.entity/provinces.entity';

@Module({
  imports:[TypeOrmModule.forFeature([ProvincesEntity])],
  providers: [AdminService],
  controllers: [AdminController]
})
export class AdminModule {}
