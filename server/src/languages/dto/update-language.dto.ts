import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateLanguageDto } from './create-language.dto';
import { IsNotEmpty, IsOptional, IsString } from 'class-validator';

export class UpdateLanguageDto extends PartialType(CreateLanguageDto) {
    @ApiProperty({ required: true })
    idLanguage: number;
  
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
