.class public Lcom/zui/gallery/util/LightCycleHelper;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;
    }
.end annotation


# static fields
.field public static final NOT_PANORAMA:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;-><init>(ZZ)V

    sput-object v0, Lcom/zui/gallery/util/LightCycleHelper;->NOT_PANORAMA:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModifiedTimeFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;
    .locals 0

    .line 39
    sget-object p0, Lcom/zui/gallery/util/LightCycleHelper;->NOT_PANORAMA:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    return-object p0
.end method

.method public static getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
