.class public Lcom/zui/gallery/app/Config$ManageCachePage;
.super Lcom/zui/gallery/app/Config$AlbumSetPage;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManageCachePage"
.end annotation


# static fields
.field private static sInstance:Lcom/zui/gallery/app/Config$ManageCachePage;


# instance fields
.field public final cachePinMargin:I

.field public final cachePinSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;ILcom/zui/gallery/app/Config$1;)V

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060127

    .line 456
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/Config$ManageCachePage;->cachePinSize:I

    const v0, 0x7f060126

    .line 457
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/Config$ManageCachePage;->cachePinMargin:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/zui/gallery/app/Config$ManageCachePage;
    .locals 2

    const-class v0, Lcom/zui/gallery/app/Config$ManageCachePage;

    monitor-enter v0

    .line 447
    :try_start_0
    sget-object v1, Lcom/zui/gallery/app/Config$ManageCachePage;->sInstance:Lcom/zui/gallery/app/Config$ManageCachePage;

    if-nez v1, :cond_0

    .line 448
    new-instance v1, Lcom/zui/gallery/app/Config$ManageCachePage;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/Config$ManageCachePage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/gallery/app/Config$ManageCachePage;->sInstance:Lcom/zui/gallery/app/Config$ManageCachePage;

    .line 450
    :cond_0
    sget-object p0, Lcom/zui/gallery/app/Config$ManageCachePage;->sInstance:Lcom/zui/gallery/app/Config$ManageCachePage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
