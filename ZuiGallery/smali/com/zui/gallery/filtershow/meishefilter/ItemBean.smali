.class public Lcom/zui/gallery/filtershow/meishefilter/ItemBean;
.super Ljava/lang/Object;
.source "ItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public imageDrawable:Landroid/graphics/drawable/Drawable;

.field public imagePath:Ljava/lang/String;

.field public itemid:Ljava/lang/String;

.field public nameCH:Ljava/lang/String;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/ItemBean;->selected:Z

    return-void
.end method
