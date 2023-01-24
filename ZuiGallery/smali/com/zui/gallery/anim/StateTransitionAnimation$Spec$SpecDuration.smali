.class public Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecDuration"
.end annotation


# instance fields
.field public End:F

.field public Start:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;->Start:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;->End:F

    return-void
.end method
