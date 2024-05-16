import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateQuizDto {
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
export class CreateQuizDto {}
