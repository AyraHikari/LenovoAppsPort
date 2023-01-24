.class public Lcom/google/vr/vrcore/base/api/VrCoreUtils$ConnectionResult;
.super Ljava/lang/Object;
.source "VrCoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/base/api/VrCoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionResult"
.end annotation


# static fields
.field public static final NOT_SUPPORTED:I = 0x7

.field public static final NO_PERMISSION:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x2

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_NOT_CONNECTED:I = 0x5

.field public static final SERVICE_OBSOLETE:I = 0x4

.field public static final SERVICE_UPDATING:I = 0x3

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
