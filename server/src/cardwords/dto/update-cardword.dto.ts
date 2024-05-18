import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateCardwordDto } from './create-cardword.dto';
import { IsBoolean, IsDate, IsNumber } from 'class-validator';

export class UpdateCardwordDto extends PartialType(CreateCardwordDto) {
    @ApiProperty({ required: true })
    idCardWord: number;
    @ApiProperty({ required: false })
    @IsNumber()
    dictionaryId: number;
    @ApiProperty({ required: false })
    @IsBoolean()
    isCorrect: boolean;
    @ApiProperty({ required: false })
    @IsNumber()
    userId: number;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}
