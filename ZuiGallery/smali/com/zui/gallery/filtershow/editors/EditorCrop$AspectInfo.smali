.class public final Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;
.super Ljava/lang/Object;
.source "EditorCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/editors/EditorCrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AspectInfo"
.end annotation


# instance fields
.field mAspectX:I

.field mAspectY:I

.field mStringId:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;->mStringId:I

    .line 59
    iput p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;->mAspectX:I

    .line 60
    iput p3, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;->mAspectY:I

    return-void
.end method
