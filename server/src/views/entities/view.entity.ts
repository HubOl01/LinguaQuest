import { ApiProperty } from '@nestjs/swagger';
import { View } from '@prisma/client';

export class ViewEntity implements View {
  @ApiProperty({ required: true })
  idView: number;
  @ApiProperty({ required: false })
  userId: number;
  @ApiProperty({ required: false })
  postId: number;
  @ApiProperty({ required: true })
  date_created: Date;
}
