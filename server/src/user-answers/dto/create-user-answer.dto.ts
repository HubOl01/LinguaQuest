import { ApiProperty } from "@nestjs/swagger";
import { IsBoolean, IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateUserAnswerDto {

    @ApiProperty({required:false})
    @IsNumber()
    userId:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    quizId:number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    answer:string;

    @ApiProperty()
    @IsBoolean()
    @IsNotEmpty()
    isCorrect:boolean;

    @ApiProperty({required:false})
    @IsNumber()
    xp:number;
}
