import { ApiProperty, PartialType } from '@nestjs/swagger';
import { CreateAchievementDto } from './create-achievement.dto';
import { IsNumber, IsNotEmpty, IsString } from 'class-validator';

export class UpdateAchievementDto extends PartialType(CreateAchievementDto) {
    
    @ApiProperty({required:true})
    idAchievement:number;

    @ApiProperty()
    @IsNumber()
    @IsNotEmpty()
    userId:number;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    name:string;
    
    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    url_image:string;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    description:string;

    @ApiProperty({required:false})
    date_created?:Date;
}
