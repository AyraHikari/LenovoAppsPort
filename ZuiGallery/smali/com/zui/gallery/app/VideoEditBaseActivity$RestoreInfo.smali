.class public Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;
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
            "Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentVideoFilterPosition:I

.field doneBtnEnable:Z

.field initMult:I

.field isFirst:Z

.field lastSeekPosition:I

.field mult:I

.field playPosition:J

.field playing:Z

.field savePicBtnEnable:Z

.field saveVideoWhich:I

.field slowBarActivity:Z

.field slowBarMoved:Z

.field slowEndTime:I

.field slowStartTime:I

.field speedBarShow:Z

.field trimBarActivity:Z

.field trimEndTime:J

.field trimStarTime:J

.field videoFxPackageId:Ljava/lang/String;

.field videoHeight:I

.field videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1408
    new-instance v0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo$1;

    invoke-direct {v0}, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo$1;-><init>()V

    sput-object v0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
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
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->isFirst:Z

    .line 1356
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playing:Z

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    .line 1358
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->savePicBtnEnable:Z

    .line 1359
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->speedBarShow:Z

    .line 1360
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowBarActivity:Z

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowBarMoved:Z

    .line 1363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoWidth:I

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoHeight:I

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playPosition:J

    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->mult:I

    .line 1367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    .line 1369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowStartTime:I

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowEndTime:I

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->initMult:I

    .line 1372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->lastSeekPosition:I

    .line 1373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoFxPackageId:Ljava/lang/String;

    .line 1374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->currentVideoFilterPosition:I

    .line 1375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->saveVideoWhich:I

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

    .line 1385
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->isFirst:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1386
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playing:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1387
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->doneBtnEnable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1388
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->savePicBtnEnable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1389
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->speedBarShow:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1390
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowBarActivity:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1391
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimBarActivity:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1392
    iget-boolean p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowBarMoved:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1393
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->playPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1396
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->mult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    iget-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimStarTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1398
    iget-wide v0, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->trimEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1399
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowStartTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->slowEndTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->initMult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->lastSeekPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget-object p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->videoFxPackageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1404
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->currentVideoFilterPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    iget p2, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$RestoreInfo;->saveVideoWhich:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
