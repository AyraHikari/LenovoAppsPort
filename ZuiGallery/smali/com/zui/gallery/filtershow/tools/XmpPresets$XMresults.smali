.class public Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;
.super Ljava/lang/Object;
.source "XmpPresets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/tools/XmpPresets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMresults"
.end annotation


# instance fields
.field public originalimage:Landroid/net/Uri;

.field public preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field public presetString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
