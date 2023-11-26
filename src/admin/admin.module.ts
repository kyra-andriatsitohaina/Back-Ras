import { Module } from '@nestjs/common';
import { AdminService } from './admin.service';
import { AdminController } from './admin.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProvincesEntity } from 'src/entities/provinces.entity/provinces.entity';
import { AdminEntity } from 'src/entities/admin.entity/admin.entity';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports:[TypeOrmModule.forFeature([ProvincesEntity,AdminEntity]),
  JwtModule.register(
    {
      secret:"kyraKely",
      signOptions:{
        expiresIn:300
      }
    }
  )
],
  providers: [AdminService],
  controllers: [AdminController]
})
export class AdminModule {}
