.class public abstract enum Lcom/zui/gallery/util/AvatarUtils$Action;
.super Ljava/lang/Enum;
.source "AvatarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/AvatarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/util/AvatarUtils$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum ADD_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum ADD_TO_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum ADD_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum CHECK_ALL:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum CLICK_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum CLICK_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum CLICK_SYSTEM_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum CLOUD_PHOTO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum CLOUD_VIDEO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum COULD_IMMEDIATELY_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum DAY_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum DELETE_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum DOCUMENT_CORRECTION:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum DOCUMENT_CORRECTION_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum LONG_PRESS_ALBUM_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum LONG_PRESS_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum MONTH_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_ADJUST:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_BRUSH:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_CROP:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_EDITOR_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_MOSAIC:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PHOTO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PICTURE_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum PICTURE_REPLACE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum SELECT_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum SELECT_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum SET_PHOTO_TO:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum START_GALLERY:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum TEXT_WATERMARK:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_CLIP:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_CLIP_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum VIDEO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum WIFI_AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

.field public static final enum WIFI_AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 165
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$1;

    const-string v1, "START_GALLERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/util/AvatarUtils$Action$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->START_GALLERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 171
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$2;

    const-string v1, "AUTO_OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/util/AvatarUtils$Action$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 177
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$3;

    const-string v1, "AUTO_CLOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/util/AvatarUtils$Action$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 183
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$4;

    const-string v1, "COULD_IMMEDIATELY_OPEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/util/AvatarUtils$Action$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->COULD_IMMEDIATELY_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 189
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$5;

    const-string v1, "WIFI_AUTO_OPEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/util/AvatarUtils$Action$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->WIFI_AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 195
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$6;

    const-string v1, "WIFI_AUTO_CLOSE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zui/gallery/util/AvatarUtils$Action$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->WIFI_AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 201
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$7;

    const-string v1, "DAY_VIEW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/zui/gallery/util/AvatarUtils$Action$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->DAY_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 207
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$8;

    const-string v1, "MONTH_VIEW"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/zui/gallery/util/AvatarUtils$Action$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->MONTH_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 213
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$9;

    const-string v1, "ADD_ALBUM"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/zui/gallery/util/AvatarUtils$Action$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 219
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$10;

    const-string v1, "CLICK_ALBUM"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/zui/gallery/util/AvatarUtils$Action$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 225
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$11;

    const-string v1, "CLICK_SYSTEM_ALBUM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/zui/gallery/util/AvatarUtils$Action$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_SYSTEM_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 231
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$12;

    const-string v1, "LONG_PRESS_ALBUM_DELETE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/zui/gallery/util/AvatarUtils$Action$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->LONG_PRESS_ALBUM_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 237
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$13;

    const-string v1, "LONG_PRESS_SELECT_MODE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/zui/gallery/util/AvatarUtils$Action$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->LONG_PRESS_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 243
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$14;

    const-string v1, "CLICK_SELECT_MODE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 249
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$15;

    const-string v1, "CHECK_ALL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CHECK_ALL:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 255
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$16;

    const-string v1, "SELECT_SHARE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->SELECT_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 261
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$17;

    const-string v1, "ADD_TO_ALBUM"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_TO_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 267
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$18;

    const-string v1, "SELECT_DELETE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->SELECT_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 273
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$19;

    const-string v1, "PHOTO_FILTER"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 279
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$20;

    const-string v1, "PHOTO_CROP"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_CROP:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 285
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$21;

    const-string v1, "PHOTO_ADJUST"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_ADJUST:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 291
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$22;

    const-string v1, "PHOTO_BRUSH"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_BRUSH:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 297
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$23;

    const-string v1, "PHOTO_MOSAIC"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_MOSAIC:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 303
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$24;

    const-string v1, "PHOTO_EDITOR_SAVE"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$24;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_EDITOR_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 309
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$25;

    const-string v1, "PHOTO_SHARE"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$25;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 315
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$26;

    const-string v1, "PHOTO_COLLECT"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$26;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 321
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$27;

    const-string v1, "PHOTO_DELETE"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$27;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 327
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$28;

    const-string v1, "SET_PHOTO_TO"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$28;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->SET_PHOTO_TO:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 333
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$29;

    const-string v1, "CLOUD_PHOTO_DOWNLOAD"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$29;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_PHOTO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 339
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$30;

    const-string v1, "DOCUMENT_CORRECTION_SAVE"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$30;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->DOCUMENT_CORRECTION_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 345
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$31;

    const-string v1, "DOCUMENT_CORRECTION"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$31;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->DOCUMENT_CORRECTION:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 351
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$32;

    const-string v1, "VIDEO_CLIP"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$32;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_CLIP:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 357
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$33;

    const-string v1, "VIDEO_CLIP_SAVE"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_CLIP_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 363
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$34;

    const-string v1, "VIDEO_SHARE"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$34;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 369
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$35;

    const-string v1, "VIDEO_COLLECT"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$35;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 375
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$36;

    const-string v1, "VIDEO_DELETE"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$36;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 381
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$37;

    const-string v1, "CLOUD_VIDEO_DOWNLOAD"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$37;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_VIDEO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 387
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$38;

    const-string v1, "TEXT_WATERMARK"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$38;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->TEXT_WATERMARK:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 392
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$39;

    const-string v1, "VIDEO_FILTER"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$39;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 397
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$40;

    const-string v1, "PICTURE_RECOVERY"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$40;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PICTURE_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 402
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$41;

    const-string v1, "VIDEO_RECOVERY"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$41;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 407
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$42;

    const-string v1, "PICTURE_REPLACE"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$42;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PICTURE_REPLACE:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 412
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$43;

    const-string v1, "ADD_WIDGET"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$43;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 417
    new-instance v0, Lcom/zui/gallery/util/AvatarUtils$Action$44;

    const-string v1, "DELETE_WIDGET"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/zui/gallery/util/AvatarUtils$Action$44;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->DELETE_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v1, 0x2c

    new-array v1, v1, [Lcom/zui/gallery/util/AvatarUtils$Action;

    .line 164
    sget-object v15, Lcom/zui/gallery/util/AvatarUtils$Action;->START_GALLERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v15, v1, v2

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->COULD_IMMEDIATELY_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->WIFI_AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->WIFI_AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->DAY_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->MONTH_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v9

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v10

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v11

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_SYSTEM_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v12

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->LONG_PRESS_ALBUM_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v13

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->LONG_PRESS_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

    aput-object v2, v1, v14

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->CHECK_ALL:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->SELECT_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_TO_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->SELECT_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_CROP:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_ADJUST:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_BRUSH:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_MOSAIC:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_EDITOR_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->SET_PHOTO_TO:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_PHOTO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->DOCUMENT_CORRECTION_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->DOCUMENT_CORRECTION:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_CLIP:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_CLIP_SAVE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_VIDEO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->TEXT_WATERMARK:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PICTURE_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_RECOVERY:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PICTURE_REPLACE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    sput-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->$VALUES:[Lcom/zui/gallery/util/AvatarUtils$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/zui/gallery/util/AvatarUtils$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/util/AvatarUtils$Action;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/util/AvatarUtils$Action;
    .locals 1

    .line 164
    const-class v0, Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/util/AvatarUtils$Action;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/util/AvatarUtils$Action;
    .locals 1

    .line 164
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->$VALUES:[Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-virtual {v0}, [Lcom/zui/gallery/util/AvatarUtils$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/util/AvatarUtils$Action;

    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
