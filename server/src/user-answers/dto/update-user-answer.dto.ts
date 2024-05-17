import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateUserAnswerDto } from './create-user-answer.dto';
import { IsNumber, IsNotEmpty, IsBoolean, IsString } from 'class-validator';

export class UpdateUserAnswerDto extends PartialType(CreateUserAnswerDto) {
    @ApiProperty({required:true})
    idUserAnswer:number;

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
