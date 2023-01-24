.class Lcom/zui/gallery/banner/FileListDetailsActivity$MyDetailsSource;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$MyDetailsSource;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;Lcom/zui/gallery/banner/FileListDetailsActivity$1;)V
    .locals 0

    .line 761
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity$MyDetailsSource;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
