.class public Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;
.super Ljava/lang/Object;
.source "NvAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvUserAssetInfo"
.end annotation


# instance fields
.field public aspectRatio:I

.field public assetType:I

.field public categoryId:I

.field public coverUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public remotePackageSize:I

.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
