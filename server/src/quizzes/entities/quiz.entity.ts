import { ApiProperty } from '@nestjs/swagger';
import { Quiz } from '@prisma/client';

export class QuizEntity implements Quiz {
  @ApiProperty({ required: false })
  idQuiz: number;
  @ApiProperty()
  lessonId: number;
  @ApiProperty()
  QuizTypeId: number;
  @ApiProperty()
  question: string;
  @ApiProperty()
  answer: string;
  @ApiProperty()
  explanation: string;
  @ApiProperty({ required: false })
  audiofile: string;
  @ApiProperty({ required: false })
  url_image: string;
  @ApiProperty()
  xp: number;
  @ApiProperty()
  date_created: Date;
}
