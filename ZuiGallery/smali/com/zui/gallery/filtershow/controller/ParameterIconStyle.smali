.class public Lcom/zui/gallery/filtershow/controller/ParameterIconStyle;
.super Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;
.source "ParameterIconStyle.java"


# instance fields
.field mBitmaps:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(I[Landroid/graphics/Bitmap;)V
    .locals 1

    .line 25
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterStyle;-><init>(II)V

    .line 26
    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/ParameterIconStyle;->mBitmaps:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getIcon(ILcom/zui/gallery/filtershow/controller/BitmapCaller;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ParameterIconStyle;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/controller/BitmapCaller;->available(Landroid/graphics/Bitmap;)V

    return-void
.end method
