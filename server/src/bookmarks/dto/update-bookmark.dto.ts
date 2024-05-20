import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateBookmarkDto } from './create-bookmark.dto';
import { IsDate, IsNumber } from 'class-validator';

export class UpdateBookmarkDto extends PartialType(CreateBookmarkDto) {
    @ApiProperty({ required: true })
    idBookmark: number;
    @ApiProperty({ required: false })
    @IsNumber()
    userId: number;
    @ApiProperty({ required: false })
    @IsNumber()
    ruleId: number;
    @ApiProperty({ required: false })
    @IsNumber()
    postId: number;
    @ApiProperty({ required: true })
    @IsDate()
    date_created: Date;
}