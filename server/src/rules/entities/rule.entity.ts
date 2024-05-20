import { ApiProperty } from '@nestjs/swagger';
import { Rule } from '@prisma/client';

export class RuleEntity implements Rule {
    @ApiProperty({ required: true })
    idRule: number;
    @ApiProperty({ required: false })
    title: string;
    @ApiProperty({ required: false })
    description: string;
    @ApiProperty({ required: true })
    date_created: Date;
    @ApiProperty({ required: true })
    date_updated: Date;
}