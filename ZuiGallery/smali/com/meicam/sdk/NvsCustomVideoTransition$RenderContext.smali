.class public Lcom/meicam/sdk/NvsCustomVideoTransition$RenderContext;
.super Ljava/lang/Object;
.source "NvsCustomVideoTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsCustomVideoTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderContext"
.end annotation


# instance fields
.field public comingInVideoFrame:Lcom/meicam/sdk/NvsCustomVideoTransition$VideoFrame;

.field public effectEndTime:J

.field public effectStartTime:J

.field public effectTime:J

.field public helper:Lcom/meicam/sdk/NvsCustomVideoFx$RenderHelper;

.field public outGoingVideoFrame:Lcom/meicam/sdk/NvsCustomVideoTransition$VideoFrame;

.field public outputVideoFrame:Lcom/meicam/sdk/NvsCustomVideoTransition$VideoFrame;

.field public progress:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
