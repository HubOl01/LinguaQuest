import { ApiProperty } from '@nestjs/swagger';
import {
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
} from 'class-validator';

export class CreateLanguageDto {
  
  @ApiProperty({ required: false })
  @IsOptional()
  date_created?: Date; //Необязательны к вводу

  @ApiProperty()
  @IsString() 
  @IsNotEmpty()           
  language:string; //Обязательны к вводу

  @ApiProperty()
  @IsString()
  flagUrl?:string;
}
