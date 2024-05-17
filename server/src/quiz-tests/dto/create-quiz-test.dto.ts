import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateQuizTestDto {
    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    quizId:number;

    @ApiProperty({required:false})
    @IsString()
    answer?:string;

    @ApiProperty({required:false})
    @IsString()
    word?:string;
}
