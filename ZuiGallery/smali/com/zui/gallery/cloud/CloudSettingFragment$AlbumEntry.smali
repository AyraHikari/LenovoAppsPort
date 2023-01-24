.class Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumEntry"
.end annotation


# static fields
.field static final IS_CLOUD_AND_LOCAL:I = 0x0

.field static final IS_CLOUD_ONLY:I = 0x1

.field static final IS_LOCAL_ONLY:I = 0x2


# instance fields
.field isLocalOrCloud:I

.field localPath:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->name:Ljava/lang/String;

    .line 500
    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->localPath:Ljava/lang/String;

    .line 501
    iput p3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->isLocalOrCloud:I

    return-void
.end method
