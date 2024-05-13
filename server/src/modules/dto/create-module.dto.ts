import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsOptional, IsString } from "class-validator";

export class CreateModuleDto {
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
