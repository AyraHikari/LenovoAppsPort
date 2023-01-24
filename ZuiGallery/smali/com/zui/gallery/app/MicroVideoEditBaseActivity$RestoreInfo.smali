.class public Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field doneBtnEnable:Z

.field initMult:I

.field isFirst:Z

.field lastSeekPosition:I

.field mult:I

.field playPosition:I

.field playing:Z

.field savePicBtnEnable:Z

.field slowBarActivity:Z

.field slowBarMoved:Z

.field slowEndTime:I

.field slowStartTime:I

.field speedBarShow:Z

.field trimBarActivity:Z

.field trimEndTime:J

.field trimStarTime:J

.field videoHeight:I

.field videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1126
    new-instance v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo$1;

    invoke-direct {v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo$1;-><init>()V

    sput-object v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->isFirst:Z

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playing:Z

    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->savePicBtnEnable:Z

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->speedBarShow:Z

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowBarActivity:Z

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowBarMoved:Z

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->videoWidth:I

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->videoHeight:I

    .line 1089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playPosition:I

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->mult:I

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowStartTime:I

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowEndTime:I

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->initMult:I

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->lastSeekPosition:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1106
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->isFirst:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1107
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playing:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1108
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1109
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->savePicBtnEnable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1110
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->speedBarShow:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1111
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowBarActivity:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1112
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1113
    iget-boolean p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowBarMoved:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1114
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->videoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->videoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->playPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->mult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1119
    iget-wide v0, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1120
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowStartTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->slowEndTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->initMult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget p2, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;->lastSeekPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
