import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateQuizTestDto } from './create-quiz-test.dto';
import { IsNumber, IsNotEmpty, IsString } from 'class-validator';

export class UpdateQuizTestDto extends PartialType(CreateQuizTestDto) {
    @ApiProperty({required:true})
    idQuizTest:number;

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
