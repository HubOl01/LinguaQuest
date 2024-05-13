import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateModuleDto } from './create-module.dto';
import { IsNumber, IsNotEmpty, IsString, IsOptional } from 'class-validator';

export class UpdateModuleDto extends PartialType(CreateModuleDto) {
    @ApiProperty({ required: true })
    idModule:number;

    @ApiProperty()
    @IsNumber() 
    @IsNotEmpty() 
    languageId:number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    title:string;

    @ApiProperty({ required: false })
    @IsOptional()
    @IsString()
    description?:string;

    @ApiProperty({ required: false })
    @IsOptional()
    date_created?:Date;
}

