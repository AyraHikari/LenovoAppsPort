.class public Lcom/meicam/sdk/NvsPointD;
.super Ljava/lang/Object;
.source "NvsPointD.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/meicam/sdk/NvsPointD;->x:D

    .line 39
    iput-wide p3, p0, Lcom/meicam/sdk/NvsPointD;->y:D

    return-void
.end method
