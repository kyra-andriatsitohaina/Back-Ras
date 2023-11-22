import { Module } from '@nestjs/common';
import { UsersController } from './users.controller';
import { UsersService } from './users.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserEntity } from 'src/entities/user.entity/user.entity';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports:[TypeOrmModule.forFeature([UserEntity]),
      PassportModule.register({defaultStrategy : "jwt"}),
      JwtModule.register(
        {
          secret:"kyraKely",
          signOptions:{
            expiresIn:300
          }
        }
      )
  ],
  controllers: [UsersController],
  providers: [UsersService]
})
export class UsersModule {}
