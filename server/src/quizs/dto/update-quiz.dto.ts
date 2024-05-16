import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateQuizDto } from './create-quiz.dto';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdateQuizDto extends PartialType(CreateQuizDto) {
  @ApiProperty({ required: true })
  idQuiz: number;

  @ApiProperty()
  @IsNumber()
  @IsNotEmpty()
  lessonId: number;

  @ApiProperty()
  @IsNumber()
  @IsNotEmpty()
  QuizTypeId: number;

  @ApiProperty()
  @IsNumber()
  @IsNotEmpty()
  question: string;

  @ApiProperty()
  @IsNumber()
  @IsNotEmpty()
  answer: string;

  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  explanation: string;

  @ApiProperty({ required: false })
  @IsString()
  audiofile?: string;

  @ApiProperty({ required: false })
  @IsString()
  url_image?: string;

  @ApiProperty()
  @IsNumber()
  @IsNotEmpty()
  xp: number;

  @ApiProperty({ required: false })
  date_created?: Date;
}
