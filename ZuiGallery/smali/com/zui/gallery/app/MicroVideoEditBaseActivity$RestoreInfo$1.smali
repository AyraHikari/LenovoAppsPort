.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo$1;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;
    .locals 1

    .line 1128
    new-instance v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    invoke-direct {v0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1126
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;
    .locals 0

    .line 1132
    new-array p1, p1, [Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1126
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo$1;->newArray(I)[Lcom/zui/gallery/app/MicroVideoEditBaseActivity$RestoreInfo;

    move-result-object p1

    return-object p1
.end method
