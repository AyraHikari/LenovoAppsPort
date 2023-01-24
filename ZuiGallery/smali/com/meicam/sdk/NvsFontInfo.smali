.class public Lcom/meicam/sdk/NvsFontInfo;
.super Ljava/lang/Object;
.source "NvsFontInfo.java"


# instance fields
.field public famlily:Ljava/lang/String;

.field public isItalic:Z

.field public weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meicam/sdk/NvsFontInfo;->famlily:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/meicam/sdk/NvsFontInfo;->weight:I

    .line 35
    iput-boolean p3, p0, Lcom/meicam/sdk/NvsFontInfo;->isItalic:Z

    return-void
.end method
