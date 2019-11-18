function varargout = gui_jst(varargin)
% GUI_JST MATLAB code for gui_jst.fig
%      GUI_JST, by itself, creates a new GUI_JST or raises the existing
%      singleton*.
%
%      H = GUI_JST returns the handle to a new GUI_JST or the handle to
%      the existing singleton*.
%
%      GUI_JST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_JST.M with the given input arguments.
%
%      GUI_JST('Property','Value',...) creates a new GUI_JST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_jst_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_jst_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_jst

% Last Modified by GUIDE v2.5 14-Nov-2019 17:56:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_jst_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_jst_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_jst is made visible.
function gui_jst_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_jst (see VARARGIN)

% Choose default command line output for gui_jst
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_jst wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_jst_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function hasil_penjualan_Callback(hObject, eventdata, handles)
% hObject    handle to hasil_penjualan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil_penjualan as text
%        str2double(get(hObject,'String')) returns contents of hasil_penjualan as a double


% --- Executes during object creation, after setting all properties.
function hasil_penjualan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil_penjualan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function harga_penjualan_Callback(hObject, eventdata, handles)
% hObject    handle to harga_penjualan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of harga_penjualan as text
%        str2double(get(hObject,'String')) returns contents of harga_penjualan as a double


% --- Executes during object creation, after setting all properties.
function harga_penjualan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to harga_penjualan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stok_Callback(hObject, eventdata, handles)
% hObject    handle to stok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stok as text
%        str2double(get(hObject,'String')) returns contents of stok as a double


% --- Executes during object creation, after setting all properties.
function stok_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in proses.
function proses_Callback(hObject, eventdata, handles)
% hObject    handle to proses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


hasil_penjualan = handles.hasil_penjualan.String;
harga_penjualan = handles.harga_penjualan.String;
stok = handles.stok.String;

x1 = str2double(hasil_penjualan);
x2 = str2double(harga_penjualan);
x3 = str2double(stok);

load jst.mat
hasil = sim(jst,[x1;x2;x3]);

h = num2str(hasil);

handles.hasil.String = h;
