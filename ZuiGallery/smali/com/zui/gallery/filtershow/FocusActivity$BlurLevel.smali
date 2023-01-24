.class Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;
.super Ljava/lang/Object;
.source "FocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlurLevel"
.end annotation


# instance fields
.field mFNumber:F

.field mLevel:I


# direct methods
.method constructor <init>(IF)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;->mLevel:I

    .line 123
    iput p2, p0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;->mFNumber:F

    return-void
.end method
