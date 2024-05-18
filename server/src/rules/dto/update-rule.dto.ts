import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateRuleDto } from './create-rule.dto';
import { IsDate, IsString } from "class-validator";

export class UpdateRuleDto extends PartialType(CreateRuleDto) {
    @ApiProperty({ required: true })
    idRule: number;
    @ApiProperty({ required: false })
    @IsString()
    title: string;
    @ApiProperty({ required: false })
    @IsString()
    description: string;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
    @ApiProperty({ required: true })
    @IsDate()
    date_updated: Date;
}
