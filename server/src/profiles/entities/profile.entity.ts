import { ApiProperty } from '@nestjs/swagger';
import { Profile } from '@prisma/client';

export class ProfileEntity implements Profile {
  @ApiProperty({ required: false })
  idProfile: number;
  @ApiProperty({ required: false })
  name: string;
  @ApiProperty({ required: false })
  birthday: Date;
  @ApiProperty({ required: false })
  userId: number;
}
