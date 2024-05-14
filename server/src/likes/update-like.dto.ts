import { ApiProperty, PartialType } from '@nestjs/swagger';
import { IsDate, IsNumber } from 'class-validator';
import { CreateLikeDto } from './dto/create-like.dto';

export class UpdateLikeDto extends PartialType(CreateLikeDto) {
  @ApiProperty({ required: true })
  @IsNumber()
  idLike: number;
  @ApiProperty({ required: false })
  @IsNumber()
  userId: number;
  @ApiProperty({ required: false })
  @IsNumber()
  postId: number;
  @ApiProperty({ required: true })
  @IsDate()
  date_created: Date;
}
