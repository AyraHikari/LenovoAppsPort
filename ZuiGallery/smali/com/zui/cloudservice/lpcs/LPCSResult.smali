.class public Lcom/zui/cloudservice/lpcs/LPCSResult;
.super Ljava/lang/Object;
.source "LPCSResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/cloudservice/lpcs/LPCSResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errCode:Ljava/lang/String;

.field private errMsg:Ljava/lang/String;

.field protected extra:Ljava/lang/String;

.field private isCache:Z

.field private success:Z

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/zui/cloudservice/lpcs/LPCSResult$1;

    invoke-direct {v0}, Lcom/zui/cloudservice/lpcs/LPCSResult$1;-><init>()V

    sput-object v0, Lcom/zui/cloudservice/lpcs/LPCSResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->type:I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->success:Z

    const-string v1, "0"

    .line 42
    iput-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errCode:Ljava/lang/String;

    const-string v1, ""

    .line 43
    iput-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errMsg:Ljava/lang/String;

    .line 44
    iput-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->type:I

    .line 49
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/LPCSResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected generateExtra()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/zui/cloudservice/lpcs/LPCSResult;
    .locals 2

    .line 26
    iget v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;->fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSCloudAlbums;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/zui/cloudservice/lpcs/LPCSTrashBin;->fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSTrashBin;

    move-result-object v0

    return-object v0

    .line 32
    :cond_2
    invoke-static {p0}, Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;->fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSPhotoDetail;

    move-result-object v0

    return-object v0

    .line 30
    :cond_3
    invoke-static {p0}, Lcom/zui/cloudservice/lpcs/LPCSMediaStore;->fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSMediaStore;

    move-result-object v0

    return-object v0

    .line 28
    :cond_4
    invoke-static {p0}, Lcom/zui/cloudservice/lpcs/LPCSUsage;->fromResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)Lcom/zui/cloudservice/lpcs/LPCSUsage;

    move-result-object v0

    return-object v0
.end method

.method public isCache()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->success:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->type:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->success:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errCode:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errMsg:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->extra:Ljava/lang/String;

    return-void
.end method

.method public setCache(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache:Z

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->generateExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 61
    iget p2, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean p2, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->success:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->errMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-boolean p2, p0, Lcom/zui/cloudservice/lpcs/LPCSResult;->isCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/LPCSResult;->generateExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
