import {Module} from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UsersModule } from './users/users.module';
import { ArticleModule } from './article/article.module';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { AdminModule } from './admin/admin.module';

@Module({

  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '',
      database: 'rasamy',
      entities: ["dist/**/*.entity{.ts,.js}"],
      synchronize:true,
  }),
  ServeStaticModule.forRoot({
    rootPath:join(__dirname,'..','public'),
    serveRoot:'/client/'
  }),


  ArticleModule,UsersModule, AdminModule, 
],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule  {}

