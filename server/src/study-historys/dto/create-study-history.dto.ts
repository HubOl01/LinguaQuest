import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber } from "class-validator";

export class CreateStudyHistoryDto {

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    userId:number;
    
    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    moduleId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    languageId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    lessonId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    score:number;

    @ApiProperty()
    date_created?:Date;
}
