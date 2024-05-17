import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateQuizTypeDto } from './create-quiz-type.dto';
import { IsNotEmpty, IsString } from 'class-validator';

export class UpdateQuizTypeDto extends PartialType(CreateQuizTypeDto) {
    @ApiProperty({required:true})
    idQuizType:number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    type:string;
}
