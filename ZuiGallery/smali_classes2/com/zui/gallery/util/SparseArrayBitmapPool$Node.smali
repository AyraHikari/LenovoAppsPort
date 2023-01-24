.class public Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/SparseArrayBitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field nextInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

.field nextInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

.field prevInBucket:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;

.field prevInPool:Lcom/zui/gallery/util/SparseArrayBitmapPool$Node;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
