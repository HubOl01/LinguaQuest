import { ApiProperty } from '@nestjs/swagger';
import { PublicationStatus } from '@prisma/client';

export class PublicationStatusEntity implements PublicationStatus {
  @ApiProperty({ required: true })
  idPublicationStatus: number;
  @ApiProperty({ required: false })
  status: string;
}
