import { ApiProperty } from '@nestjs/swagger';
import { User } from '@prisma/client';

export class UserEntity implements User {
  @ApiProperty({ required: false })
  idUser: number;
  @ApiProperty({ required: false })
  VKID: string;
  @ApiProperty({ required: false })
  TelegramID: string;
  @ApiProperty({ required: false, example: 'test@test.com' })
  email: string;
  @ApiProperty({ example: 'test' })
  username: string;
  @ApiProperty({ required: false, example: 'user01' })
  idUsername: string;
  @ApiProperty({ required: false, default: false })
  isAdmin: boolean;
  @ApiProperty({ required: false, default: false })
  isBan: boolean;
  // passwd
  @ApiProperty({ required: false })
  streak: number;
  @ApiProperty({ required: false })
  xp: number;
  @ApiProperty({ required: false })
  date_created: Date;
}
