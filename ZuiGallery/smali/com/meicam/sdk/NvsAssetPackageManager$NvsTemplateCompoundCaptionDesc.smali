.class public Lcom/meicam/sdk/NvsAssetPackageManager$NvsTemplateCompoundCaptionDesc;
.super Ljava/lang/Object;
.source "NvsAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvsTemplateCompoundCaptionDesc"
.end annotation


# instance fields
.field public clipIndex:I

.field public itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsAssetPackageManager$NvsTemplateCompoundCaptionItemDesc;",
            ">;"
        }
    .end annotation
.end field

.field public replaceId:Ljava/lang/String;

.field public trackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
